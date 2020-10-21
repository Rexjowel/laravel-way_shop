<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Products;
// use App\Images;
use Image;
class ProductsController extends Controller
{
    public function addProduct(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>";print_r($data);die;
            $product = new Products;
            $product->name = $data['product_name'];
            $product->code = $data['product_code'];
            $product->color = $data['product_color'];
            if(!empty($data['product_description'])){
                $product->description=$data['product_description'];
            }else{
                $product->description='';
            }
            $product->price = $data['product_price'];

                //upload image
                if($request->hasfile('image')){
                    $file= $request->file('image');
                    $extension = $file->getClientOriginalExtension();
                    $filename=time().'.'.$extension;
                    $file->move('upload/products/'.$filename);
                    $product->image=$filename;
                }else {
                    return $request;
                    $product->image = '';
                }
                

            $product->save();
            return redirect('/admin/add-product')->with('flash_message_success','Product has been added successfully');
        }
        return view('admin.products.add_product');
    }


    public function viewProducts(){
        $products=products::get();
        return view('admin.products.view_products')->with(compact('products'));
    }
}
