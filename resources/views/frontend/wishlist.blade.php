@extends('layouts.front')

@section('title')
    My Cart
@endsection

@section('content')

    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container link-section">
            {{-- <h6 class="mb-0">Collections / {{ $products->category->name }} / {{ $products->name }}</h6> --}}

            <a href="{{ url('/') }}">
                Home
            </a> /
            <a href="{{ url('wishlist') }}">
                Wishlist
            </a> 
        </div> 
    </div>

    <div class="container my-5">
        <div class="card shadow">
            <div class="card-body">
                @if($wishlist->count() > 0)
                    @foreach ($wishlist as $item)
                        <div class="row product-data">
                            <div class="col-md-2 my-auto">
                                <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="70px" width="70px" alt="Image here">
                            </div>
                            <div class="col-md-2 my-auto">
                                <h6>{{ $item->products->name }}</h6>
                            </div>
                            <div class="col-md-2 my-auto">
                                <h6>Rs {{ $item->products->selling_price }}</h6>
                            </div>
                            <div class="col-md-2 my-auto">
                                <input type="hidden" class="prod-id" value="{{ $item->prod_id }}">

                                @if($item->products->qty >= $item->prod_qty)
                                    <label for="Quantity">Quantity</label>
                                    <div class="input-group text-center mb-3" style="width: 130px;">
                                        <button class="input-group-text decrement-btn">-</button>
                                        <input type="text" name="quantity" value="1" class="form-control text-center qty-input">
                                        <button class="input-group-text increment-btn">+</button>
                                    </div>
                                @else
                                    <h6>Out of Stock</h6>
                                @endif    
                            </div>
                            <div class="col-md-2 my-auto">
                                <button class="btn btn-success add-to-cart-btn"> <i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>
                            <div class="col-md-2 my-auto">
                                <button class="btn btn-danger remove-wishlist-item"> <i class="fa fa-trash"></i> Remove</button>
                            </div>
                        </div>
                    @endforeach
                @else
                    <h4>There are no Products in your Wishlist</h4>
                @endif
            </div>
            
        </div>
    </div>
@endsection
