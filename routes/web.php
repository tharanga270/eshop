<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FrontendController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Frontend\FrontendsController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\Frontend\WishlistController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [FrontendsController::class, 'index']);
Route::get('/category', [FrontendsController::class, 'category']);
Route::get('/category/{slug}', [FrontendsController::class, 'viewCategory']);
Route::get('/category/{cate_slug}/{prod_slug}', [FrontendsController::class, 'productView']);

Auth::routes(['register' => false]);

Route::get('/load-cart-data', [CartController::class, 'cartCount']);
Route::get('/load-wishlist-count', [WishlistController::class, 'WishlistCount']);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::post('/add-to-cart', [CartController::class, 'addProduct']);
Route::post('/delete-cart-item', [CartController::class, 'deleteProduct']);
Route::post('/update-cart', [CartController::class, 'updateCart']);

Route::post('/add-to-wishlist', [WishlistController::class, 'add']);
Route::post('/delete-wishlist-item', [WishlistController::class, 'deleteItem']);

Route::middleware(['auth'])->group(function () {
    Route::get('/cart', [CartController::class, 'viewCart']);
    Route::get('/checkout', [CheckoutController::class, 'index']);
    Route::post('/place-order', [CheckoutController::class, 'placeOrder']);

    Route::get('/my-orders', [UserController::class, 'index']);
    Route::get('/view-order/{id}', [UserController::class, 'view']);

    Route::get('/wishlist', [WishlistController::class, 'index']);

});

Route::middleware(['auth', 'isAdmin'])->group(function (){
    
    Route::get('/dashboard', [FrontendController::class, 'index']);
    Route::get('/categories', [CategoryController::class, 'index']);
    Route::get('/add-category', [CategoryController::class, 'add']);
    Route::post('/insert-category', [CategoryController::class, 'insert']);
    Route::get('/edit-category/{id}', [CategoryController::class, 'edit']);

    Route::put('/update-category/{id}', [CategoryController::class, 'update']);
    Route::get('/delete-category/{id}', [CategoryController::class, 'destroy']);

    // Product table routes
    Route::get('/products', [ProductController::class, 'index']);
    Route::get('/add-products', [ProductController::class, 'add']);
    Route::post('/insert-product', [ProductController::class, 'insert']);
    Route::get('/edit-product/{id}', [ProductController::class, 'edit']);
    Route::put('/update-product/{id}', [ProductController::class, 'update']);
    
    Route::get('/delete-product/{id}', [ProductController::class, 'destroy']);

    Route::get('/orders', [OrderController::class, 'index']);
    Route::get('/admin/view-order/{id}', [OrderController::class, 'view']);
    Route::put('/update-order/{id}', [OrderController::class, 'updateOrder']);
    Route::get('/order-history', [OrderController::class, 'orderHistory']);

    Route::get('/users', [DashboardController::class, 'users']);
    Route::get('/view-user/{id}', [DashboardController::class, 'viewUser']);

});
