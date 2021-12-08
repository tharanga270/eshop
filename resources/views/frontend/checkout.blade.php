@extends('layouts.front')

@section('title')
    Checkout
@endsection

@section('content')
    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container link-section">
            {{-- <h6 class="mb-0">Collections / {{ $products->category->name }} / {{ $products->name }}</h6> --}}

            <a href="{{ url('/') }}">
                Home
            </a> /
            <a href="{{ url('checkout') }}">
                Checkout
            </a> 
        </div> 
    </div>
    <div class="container mt-5">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h6>Basic Details</h6>
                            <hr>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="">First Name</label>
                                    <input type="text" value="{{ Auth::user()->name }}" class="form-control" 
                                    placeholder="Enter First Name" name="fname">
                                </div>
                                <div class="col-md-6">
                                    <label for="">Last Name</label>
                                    <input type="text" value="{{ Auth::user()->lname }}" class="form-control" 
                                    placeholder="Enter Last Name" name="lname">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Email</label>
                                    <input type="email" value="{{ Auth::user()->email }}" class="form-control" 
                                    placeholder="Enter Email" name="email">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Phone Number</label>
                                    <input type="text" value="{{ Auth::user()->phone }}" class="form-control" 
                                    placeholder="Enter Phone Number" name="phone">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 1</label>
                                    <input type="text" value="{{ Auth::user()->address1 }}" class="form-control" 
                                    placeholder="Enter Address 1" name="address1">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 2</label>
                                    <input type="text" value="{{ Auth::user()->address2 }}" class="form-control" 
                                    placeholder="Enter Address 2" name="address2">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">City</label>
                                    <input type="text" value="{{ Auth::user()->city }}" class="form-control" 
                                    placeholder="Enter City" name="city">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">State</label>
                                    <input type="text" value="{{ Auth::user()->state }}" class="form-control" 
                                    placeholder="Enter State" name="state">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Country</label>
                                    <input type="text" value="{{ Auth::user()->country }}" class="form-control" 
                                    placeholder="Enter Country" name="country">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Pin Code</label>
                                    <input type="text" value="{{ Auth::user()->pincode }}" class="form-control" 
                                    placeholder="Enter Pin Code" name="pincode">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h6>Order Details</h6>
                            <hr>
                            @if($cartitems->count() > 0)
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($cartitems as $item)
                                        <tr>
                                            <td>{{ $item->products->name }}</td>
                                            <td>{{ $item->prod_qty }}</td>
                                            <td>Rs {{ $item->products->selling_price }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <hr>
                                <button type="submit" class="btn btn-primary w-100" type="button">Place Order</button>
                            @else
                                <h4 class="text-center">No products in cart</h4>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
