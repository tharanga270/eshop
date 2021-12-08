$(document).ready(function () {

    loadCart();
    loadWishlist();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function loadCart()
    {
        $.ajax({
            method: "GET",
            url: "/load-cart-data",
            success: function (response) {
                $('.cart-count').html('');
                $('.cart-count').html(response.count);
                // console.log(response.count);
            }
        });
    }

    function loadWishlist()
    {
        $.ajax({
            method: "GET",
            url: "/load-wishlist-count",
            success: function (response) {
                $('.wishlist-count').html('');
                $('.wishlist-count').html(response.count);
                // console.log(response.count);
            }
        });
    }

    // addToCartBtn click
    $('.add-to-cart-btn').click(function (e){
        e.preventDefault();

        var product_id = $(this).closest('.product-data').find('.prod-id').val();
        var product_qty = $(this).closest('.product-data').find('.qty-input').val();

        $.ajax({
            method: "POST",
            url: "/add-to-cart",
            data: {
                'product_id' : product_id,
                'product_qty' : product_qty,
            },
            success: function (response) {
                swal(response.status);
                loadCart();
            }
        });
    });

    // add-to-wishlist
    $('.add-to-wishlist').click(function (e) { 
        e.preventDefault();
        
        var product_id = $(this).closest('.product-data').find('.prod-id').val();

        $.ajax({
            method: "POST",
            url: "/add-to-wishlist",
            data: {
                'product_id' : product_id,
            },
            success: function (response) {
                swal(response.status);
                loadWishlist();
            }
        });
    });

    // increment btn
    $('.increment-btn').click(function (e){
        e.preventDefault();

        var inc_value = $(this).closest('.product-data').find('.qty-input').val();
        var value = parseInt(inc_value, 10);
        value = isNaN(value) ? 0 : value;

        if(value < 10)
        {
            value++;
            $(this).closest('.product-data').find('.qty-input').val(value);
        }
    });

    // decrement btn
    $('.decrement-btn').click(function (e){
        e.preventDefault();

        var dec_value = $(this).closest('.product-data').find('.qty-input').val();

        var value = parseInt(dec_value, 10);
        value = isNaN(value) ? 0 : value;

        if(value > 1)
        {
            value--;
            $(this).closest('.product-data').find('.qty-input').val(value);

        }
    });

    //cart delete
    $('.delete-cart-item').click(function (e) { 
        e.preventDefault();

        var prod_id = $(this).closest('.product-data').find('.prod-id').val();

        $.ajax({
            method: "POST",
            url: "/delete-cart-item",
            data: {
                'prod_id':prod_id,
            },
            success: function (response) {
                window.location.reload();
                swal("", response.status, "success");
            }
        });
    });

    // remove items from wish list
    $('.remove-wishlist-item').click(function (e) { 
        e.preventDefault();
        
        var prod_id = $(this).closest('.product-data').find('.prod-id').val();

        $.ajax({
            method: "POST",
            url: "/delete-wishlist-item",
            data: {
                'prod_id':prod_id,
            },
            success: function (response) {
                window.location.reload();
                swal("", response.status, "success");
            }
        });

    });

    // change qty
    $('.change-quantity').click(function (e) { 
        e.preventDefault();

        var prod_id = $(this).closest('.product-data').find('.prod-id').val();
        var qty = $(this).closest('.product-data').find('.qty-input').val();

        data = {
            'prod_id' : prod_id,
            'prod_qty' : qty,
        }

        $.ajax({
            method: "POST",
            url: "/update-cart",
            data: data,
            success: function (response) {
                window.location.reload();
            }
        });
    });

});