<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Session;
use App\Models\Contact;
use App\Models\OrderItem;

class Cart extends Component
{
    public $cart = [];
    public $total = 0;

    // Thông tin liên hệ
    public $name;
    public $email;
    public $phone;
    public $address;
    public $note;

    public function mount()
    {
        $this->cart = Session::get('cart', []);
        $this->calculateTotal();
    }

    public function increaseQuantity($productId)
    {
        if (isset($this->cart[$productId])) {
            $this->cart[$productId]['quantity']++;
            Session::put('cart', $this->cart);
            $this->calculateTotal();
        }
    }

    public function decreaseQuantity($productId)
    {
        if (isset($this->cart[$productId]) && $this->cart[$productId]['quantity'] > 1) {
            $this->cart[$productId]['quantity']--;
            Session::put('cart', $this->cart);
            $this->calculateTotal();
        }
    }

    public function removeFromCart($productId)
    {
        if (isset($this->cart[$productId])) {
            unset($this->cart[$productId]);
            Session::put('cart', $this->cart);
            $this->calculateTotal();
        }
    }

    public function calculateTotal()
    {
        $this->total = array_reduce($this->cart, function ($sum, $item) {
            return $sum + ($item['price'] * $item['quantity']);
        }, 0);
    }

    public function submitContact()
    {
        $this->validate([
            'name' => 'required|min:3',
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'address' => 'required|min:5',
            'note' => 'nullable|string',
        ]);

        // Tạo contact
        $contact = Contact::create([
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'address' => $this->address,
            'note' => $this->note,
        ]);

        // Lưu các sản phẩm vào OrderItem
        foreach ($this->cart as $productId => $item) {
            OrderItem::create([
                'contact_id' => $contact->id,
                'product_id' => $productId,
                'quantity' => $item['quantity'],
            ]);
        }

        // Xóa giỏ hàng sau khi lưu xong
        Session::forget('cart');
        $this->cart = [];
        $this->total = 0;

        // Reset thông tin form
        $this->reset(['name', 'email', 'phone', 'address', 'note']);

        session()->flash('success', 'Thông tin liên hệ đã được gửi thành công!');
    }

    public function render()
    {
        return view('livewire.cart', [
            'cart' => $this->cart,
            'total' => $this->total,
        ]);
    }
}
