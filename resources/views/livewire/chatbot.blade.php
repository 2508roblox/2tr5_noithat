<div style="    position: fixed;
    bottom: 7rem;
    z-index: 9999;
    right: 1rem;
    border-radius: 7rem;" x-data="{ open: false }" class="fixed bottom-5 right-5 z-50">

    <!-- Nút mở chat (Hình tròn) -->
  

    <!-- Hộp chat (Mở khi click) -->
    <div x-data="{ open: false }">
        <!-- Nút mở chat -->
        <button @click="open = !open" class="chat-button" x-show="!open">
            💬
        </button>
        <script>
            function scrollToBottom() {
                let chatbox = document.getElementById("chatbox");
                setTimeout(() => {
                    chatbox.scrollTop = chatbox.scrollHeight;
                }, 100);
            }
        
            document.addEventListener("DOMContentLoaded", function () {
                scrollToBottom(); // Cuộn xuống khi trang tải
        
                Livewire.on('scrollToBottom', () => {
                    scrollToBottom();
                });
            });
            document.addEventListener("DOMContentLoaded", function () {
        Livewire.on('focusInput', () => {
            setTimeout(() => {
                document.getElementById("chat-input").focus();
            }, 100);
        });
    });
        </script>
        
        <!-- Hộp chat -->
        <div x-show="open" class="chat-modal" :class="{ 'open': open }">
            <!-- Header -->
            <div class="chat-header">
                <h3>Hỗ trợ trực tuyến</h3>
                <button @click="open = false">✖</button>
            </div>
    
            <!-- Nội dung chat -->
            <div class="chat-content" id="chatbox">
                @foreach($messages as $message)
                    <div class="flex @if($message['from'] === 'bot') justify-start @else justify-end @endif">
                        <div class="chat-message @if($message['from'] === 'bot') bot @else user @endif">
                            {!! $message['text'] !!}
                        </div>
                    </div>
                @endforeach
            </div>
    <style>
        .chat-message {
    max-width: 70%;
    padding: 8px 12px;
    border-radius: 10px;
    word-wrap: break-word;
}

/* Tin nhắn từ bot (màu xám) */
.bot {
    background-color: #f1f1f1;
    color: #333;
}

/* Tin nhắn từ user (màu xanh, lệch phải) */
.user {
    background-color: #007bff;
    color: white;
    text-align: right;
}
.flex  {
    display: flex;
}
.justify-end {
    justify-content: flex-end;
}
        </style>            
            <!-- Ô nhập tin nhắn -->
            <div class="chat-footer">
                <input wire:model.defer="userInput" 
                       type="text" 
                       id="chat-input"
                       placeholder="Nhập tin nhắn..." 
                       wire:keydown.enter="sendMessage"
                       x-ref="input"
                       @keydown.enter="$nextTick(() => $refs.input.value = '')"
                       wire:loading.attr="disabled">
                <button wire:click="sendMessage">➤</button>
            </div>
        </div>
    </div>
    
    
    <style>
        /* ----- Nút mở chat (hình tròn góc dưới phải) ----- */
.chat-button {
    position: fixed;
    bottom: 7rem;
    right: 1rem;
    width: 60px;
    height: 60px;
    background-color: #007bff;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    cursor: pointer;
    z-index: 999;
}

.chat-button:hover {
    transform: scale(1.1);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
}

/* ----- Khung chat ----- */
.chat-popup {
    position: fixed;
    bottom: 80px;
    right: 1rem;
    width: 350px;
    background: white;
    border-radius: 12px;
    box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
    opacity: 0;
    transform: translateY(10px);
    visibility: hidden;
    transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out, visibility 0.3s;
    z-index: 1000;
}

/* Khi mở khung chat */
.chat-popup.open {
    opacity: 1;
    transform: translateY(0);
    visibility: visible;
}

/* ----- Header chat ----- */
.chat-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #007bff;
    color: white;
    padding: 10px;
    border-radius: 12px 12px 0 0;
}

.chat-header h3 {
    font-size: 18px;
    font-weight: bold;
}

.chat-header button {
    background: none;
    border: none;
    font-size: 20px;
    color: white;
    cursor: pointer;
}

.chat-header button:hover {
    color: #ffdddd;
}

/* ----- Nội dung chat ----- */
.chat-content {
    max-height: 500px;
    overflow-y: auto;
    padding: 10px;
    background: #f8f9fa;
}

/* Tin nhắn bot */
.chat-message.bot {
    background: #e9ecef;
    color: black;
    padding: 8px 12px;
    border-radius: 8px;
    margin-bottom: 8px;
    max-width: 75%;
}

/* Tin nhắn user */
.chat-message.user {
    background: #007bff;
    color: white;
    padding: 8px 12px;
    border-radius: 8px;
    margin-bottom: 8px;
    max-width: 75%;
    align-self: flex-end;
}

/* ----- Ô nhập tin nhắn ----- */
.chat-footer {
    display: flex;
    padding: 10px;
    background: white;
    border-top: 1px solid #ddd;
    border-radius: 0 0 12px 12px;
}

.chat-footer input {
    flex: 1;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 8px;
    outline: none;
}

.chat-footer button {
    background: #007bff;
    color: white;
    border: none;
    padding: 8px 12px;
    margin-left: 8px;
    border-radius: 8px;
    cursor: pointer;
}

.chat-footer button:hover {
    background: #0056b3;
}
/* ----- Nút mở chat (hình tròn góc dưới phải) ----- */
.chat-button {
    position: fixed;
    bottom: 7rem;
    right: 3.2rem;
    width: 58px;
    height: 58px;
    background-color: #007bff;
    color: white;
    border-radius: 50%;
    display: flex
;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    cursor: pointer;
    z-index: 999;
}

.chat-button:hover {
    transform: scale(1.1);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
}

/* ----- Modal chatbot ----- */
.chat-modal {
    position: fixed;
    bottom: 80px;
    right: 1rem;
    width: 350px;
    background: white;
    border-radius: 12px;
    box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
    opacity: 0;
    transform: translateY(10px);
    visibility: hidden;
    transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out, visibility 0.3s;
    z-index: 1000;
}

/* Khi mở modal */
.chat-modal.open {
    opacity: 1;
    transform: translateY(0);
    visibility: visible;
}

/* ----- Header chat ----- */
.chat-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #007bff;
    color: white;
    padding: 12px;
    border-radius: 12px 12px 0 0;
}

.chat-header h3 {
    font-size: 18px;
    font-weight: bold;
}

.chat-header button {
    background: none;
    border: none;
    font-size: 20px;
    color: white;
    cursor: pointer;
}

.chat-header button:hover {
    color: #ffdddd;
}
.chat-header h3 {
    color: #ffdddd;
}

/* ----- Nội dung chat ----- */
.chat-content {
    max-height: 500px;
    overflow-y: auto;
    padding: 12px;
    height: 500px;
    background: #f8f9fa;
}

/* Tin nhắn bot */
.chat-message.bot {
    background: #e9ecef;
    color: black;
    padding: 10px;
    border-radius: 8px;
    margin-bottom: 8px;
    max-width: 100%;
}

/* Tin nhắn user */
.chat-message.user {
    background: #007bff;
    color: white;
    padding: 10px;
    border-radius: 8px;
    margin-bottom: 8px;
    max-width: 100%;
    align-self: flex-end;
}

/* ----- Ô nhập tin nhắn ----- */
.chat-footer {
    display: flex;
    padding: 10px;
    background: white;
    border-top: 1px solid #ddd;
    border-radius: 0 0 12px 12px;
}

.chat-footer input {
    flex: 1;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 8px;
    outline: none;
}

.chat-footer button {
    background: #007bff;
    color: white;
    border: none;
    padding: 10px 12px;
    margin-left: 8px;
    border-radius: 8px;
    cursor: pointer;
}

.chat-footer button:hover {
    background: #0056b3;
}

    </style>
  
</div>
