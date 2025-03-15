<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Product;
use App\Models\Category;

class Chatbot extends Component
{
    public $messages = [];
    public $userInput = '';
    public $step = null; // Lưu trạng thái bước hiện tại
    public $selectedCategory = null; // Lưu danh mục sản phẩm đã chọn

    public function mount()
    {
        $this->messages[] = [
            'from' => 'bot',
            'text' => "
            <div style='background: #f4f4f4;   padding: 15px; border-radius: 8px;'>
                <h3 style='margin: 0 0 10px 0; color: #007bff;'>  Xin chào quý khách!</h3>
                <p style='margin: 0; color: #333;'>Chào mừng quý khách đến với <strong>Nội thất CG Home</strong>. Chúng tôi chuyên cung cấp:</p>
               
                <p style='color: #333; margin-bottom: 10px;'>Quý khách cần hỗ trợ gì hôm nay?</p>
                <div style='padding: 10px; background: #fff; border-radius: 5px; border: 1px solid #ddd;'>
                    <p style='margin: 5px 0;'>🔹 <strong>[1]</strong> Xem sản phẩm</p>
                    <p style='margin: 5px 0;'>🔹 <strong>[2]</strong> Báo giá & khuyến mãi</p>
                    <p style='margin: 5px 0;'>🔹 <strong>[3]</strong> Hỗ trợ tư vấn</p>
                    <p style='margin: 5px 0;'>🔹 <strong>[4]</strong> Chính sách bảo hành & vận chuyển</p>
                </div>
            </div>
        "
        ];
    }

    public function sendMessage()
{
    $input = trim($this->userInput);
    if ($input === '') return; // Ngăn gửi tin nhắn rỗng

    $this->messages[] = ['from' => 'user', 'text' => $input];
    $this->reset('userInput'); // Reset ô nhập
    $this->dispatch('focusInput'); // Gửi sự kiện focus về frontend
    array_pop($this->messages);
    if ($this->step === null) {
       $this->dispatch('scrollToBottom');


        if ($input == '1') {
            $this->step = 'select_category';
            $this->messages[] = [
                'from' => 'bot',
                'text' => "Quý khách muốn xem danh mục sản phẩm nào? <br>🔹 [1] Cửa gỗ composite <br>🔹 [2] Khóa cửa thông minh <br>🔹 [3] Nội thất gia đình & văn phòng"
            ];
        } elseif ($input == '2') {
            $this->step = 'select_discounted';

            $this->messages[] = [
                'from' => 'bot',
                'text' => "Quý khách muốn nhận báo giá cho sản phẩm nào? <br>🔹 [1] Cửa gỗ composite <br>🔹 [2] Khóa thông minh <br>🔹 [3] Nội thất gia đình & văn phòng"
            ];
        } elseif ($input == '3') {
            $this->step = 'tu_van'; // Đặt bước xử lý là "tư vấn"
        
            $this->messages[] = [
                'from' => 'bot',
                'text' => "💬 <strong>Chatbot:</strong> <br>👉 Quý khách cần tư vấn về sản phẩm nào? <br>🔹 [1] Chọn cửa gỗ phù hợp cho không gian <br>🔹 [2] Chọn khóa thông minh an toàn nhất <br>🔹 [3] Chọn nội thất phù hợp với ngân sách"
            ];
        }
  elseif ($input == '4') {
        $this->step = null; // Không cần bước tiếp theo, chỉ hiển thị thông tin
    
        $this->messages[] = [
            'from' => 'bot',
            'text' => "💬 <strong>Chatbot:</strong> <br>👉 <strong>Dưới đây là các chính sách dành cho sản phẩm của chúng tôi:</strong> <br>✅ <strong>Bảo hành:</strong> 12-24 tháng tùy sản phẩm <br>🚛 <strong>Vận chuyển:</strong> Miễn phí nội thành, hỗ trợ lắp đặt tận nơi <br>🔗 <a href='/chinh-sach-bao-hanh' target='_blank' style='color: #007bff; text-decoration: none;'>Xem chi tiết chính sách</a>"
        ];
    }
    
        else {
            $this->messages[] = [
                'from' => 'bot',
                'text' => "Xin lỗi, tôi chưa hiểu yêu cầu của bạn. Vui lòng chọn một số trong danh sách!"
            ];
        }
    } elseif ($this->step === 'select_category') {
       $this->dispatch('scrollToBottom');


        $categories = [
            '1' => 'cua-go-composite',
            '2' => 'khoa-cua',
            '3' => 'thi-cong-noi-that'
        ];

        if (array_key_exists($input, $categories)) {
            $this->selectedCategory = $categories[$input];
            $this->step = 'show_products';
            $this->showProducts();
        } else {
            $this->messages[] = [
                'from' => 'bot',
                'text' => "Vui lòng chọn số hợp lệ! <br>🔹 [1] Cửa gỗ composite <br>🔹 [2] Khóa cửa thông minh <br>🔹 [3] Nội thất gia đình & văn phòng"
            ];
        }
    }  elseif ($this->step === 'select_discounted') {
        $this->dispatch('scrollToBottom');
    
        $categories = [
            '1' => 'cua-go-composite',
            '2' => 'khoa-cua',
            '3' => 'thi-cong-noi-that'
        ];
    
        if (array_key_exists($input, $categories)) {
            $this->selectedCategory = $categories[$input];
            $this->step = 'show_discounted_products';
            $this->showDiscountedProducts();
        } else {
            $this->messages[] = [
                'from' => 'bot',
                'text' => "Vui lòng chọn số hợp lệ! <br>🔹 [1] Cửa gỗ composite <br>🔹 [2] Khóa cửa thông minh <br>🔹 [3] Nội thất gia đình & văn phòng"
            ];
        }
    } elseif ($this->step === 'tu_van') {
        $this->dispatch('scrollToBottom');
    
        $adviceTopics = [
            '1' => "🔹 <strong>Chọn cửa gỗ phù hợp:</strong> <br>✅ Xác định phong cách nội thất <br>✅ Chọn loại gỗ bền, chống mối mọt <br>✅ Đo kích thước cửa chính xác",
            '2' => "🔹 <strong>Chọn khóa thông minh:</strong> <br>✅ Chọn loại khóa vân tay/mã số/thẻ từ <br>✅ Ưu tiên sản phẩm có chống trộm cao <br>✅ Kiểm tra tính năng kết nối điện thoại",
            '3' => "🔹 <strong>Chọn nội thất theo ngân sách:</strong> <br>✅ Xác định phong cách thiết kế <br>✅ Chọn vật liệu bền, giá hợp lý <br>✅ So sánh giá trước khi mua"
        ];
    
        if (array_key_exists($input, $adviceTopics)) {
            $this->messages[] = [
                'from' => 'bot',
                'text' => $adviceTopics[$input] . "<br>📞 Cần tư vấn thêm? Liên hệ hotline: <a href='tel:0936705589'>0936.705.589</a>"
            ];
            $this->step = null; // Reset bước về ban đầu
        } else {
            $this->messages[] = [
                'from' => 'bot',
                'text' => "Vui lòng chọn số hợp lệ! <br>🔹 [1] Chọn cửa gỗ phù hợp cho không gian <br>🔹 [2] Chọn khóa thông minh an toàn nhất <br>🔹 [3] Chọn nội thất phù hợp với ngân sách"
            ];
        }
    }
    
    
}

private function showDiscountedProducts()
{
    $products = Product::whereHas('category', function ($query) {
        $query->where('slug', $this->selectedCategory);
    })->whereColumn('discounted_price', '<', 'original_price') // Lọc sản phẩm có giảm giá
    ->orderBy('discounted_price', 'asc') // Sắp xếp giá giảm từ thấp đến cao
    ->take(5) // Giới hạn số lượng sản phẩm hiển thị
    ->get();

    if ($products->isEmpty()) {
        $this->messages[] = [
            'from' => 'bot',
            'text' => "Hiện tại chưa có sản phẩm nào đang giảm giá trong danh mục này."
        ];
    } else {
        $this->messages[] = [
            'from' => 'bot',
            'text' => "🎉 Danh sách sản phẩm đang giảm giá:\n"
        ];

        foreach ($products as $product) {
            $imageUrl = asset('storage/' . $product->image);
            $discountPercent = round((($product->original_price - $product->discounted_price) / $product->original_price) * 100, 0);

            $this->messages[] = [
                'from' => 'bot',
                'text' => "
                    <div style='border: 1px solid #ddd; border-radius: 8px; padding: 10px; margin-bottom: 10px; text-align: center;'>
                        <img src='{$imageUrl}' alt='{$product->name}' style='width: 100%; max-height: 150px; object-fit: cover; border-radius: 5px;'>
                        <p><strong>{$product->name}</strong></p>
                        <p style='text-decoration: line-through; color: gray;'>Giá gốc: " . number_format($product->original_price, 0, ',', '.') . " VNĐ</p>
                        <p style='color: red; font-weight: bold;'>💰 Giá khuyến mãi: " . number_format($product->discounted_price, 0, ',', '.') . " VNĐ (-{$discountPercent}%)</p>
                        <a href='/san-pham/{$product->slug}' target='_blank' style='display: inline-block; padding: 5px 10px; background: #007bff; color: #fff; text-decoration: none; border-radius: 5px;'>Xem chi tiết</a>
                    </div>
                "
            ];
        }
    }

    $this->step = null; // Reset bước về ban đầu
}

private function showProducts()
{
    $products = Product::whereHas('category', function ($query) {
        $query->where('slug', $this->selectedCategory);
    })->take(3)->get();

    if ($products->isEmpty()) {
        $this->messages[] = [
            'from' => 'bot',
            'text' => "Xin lỗi, hiện tại chưa có sản phẩm nào trong danh mục này."
        ];
    } else {
        foreach ($products as $product) {
            $imageUrl = asset('storage/' . $product->image); // Đường dẫn ảnh

            $this->messages[] = [
                'from' => 'bot',
                'text' => " 
                    <div style='border: 1px solid #ddd; border-radius: 8px; padding: 10px; margin-bottom: 10px; text-align: center;'>
                        <img src='{$imageUrl}' alt='{$product->name}' style='width: 100%; max-height: 150px; object-fit: cover; border-radius: 5px;'>
                        <p><strong>{$product->name}</strong></p>
                        <p style='color: red; font-weight: bold;'>💰 " . number_format($product->discounted_price, 0, ',', '.') . " VNĐ</p>
                        <a href='/san-pham/{$product->slug}' target='_blank' style='display: inline-block; padding: 5px 10px; background: #007bff; color: #fff; text-decoration: none; border-radius: 5px;'>Xem chi tiết</a>
                    </div>
                "
            ];
        }
    }

    $this->step = null; // Reset bước về ban đầu
}

    public function render()
    {
        return view('livewire.chatbot');
    }
}
