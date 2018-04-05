$(document).ready(function(){
    // get the json data for the flashcards
    $.ajax({
        url: 'index.php/json',
        datatype: 'json',
        success: successful_request
    });
    $('#show-english').click(function(){
        var current_card = $('.card:visible');
        current_card.children().css('display', 'none');
        current_card.children('.english').css('display', 'block');
    });
    $('#show-pinyin').click(function(){
        var current_card = $('.card:visible');
        current_card.children().css('display', 'none');
        current_card.children('.pinyin').css('display', 'block');
    });
    $('#show-hanzi').click(function(){
        var current_card = $('.card:visible');
        current_card.children().css('display', 'none');
        current_card.children('.hanzi').css('display', 'block');
    });
    $('#show-next').click(function(){
        // set all cards to be showing the display-first value (english, pinyin, hanzi)  only
        console.log($('#display-first').val());
        switch($('#display-first').val()){
            case 'english':
                $('.pinyin').css('display', 'none');
                $('.hanzi').css('display', 'none');
                $('.english').css('display', 'block');
                break;
            case 'pinyin':
                $('.pinyin').css('display', 'block');
                $('.hanzi').css('display', 'none');
                $('.english').css('display', 'none');
                break;
            case 'hanzi':
                $('.pinyin').css('display', 'none');
                $('.hanzi').css('display', 'block');
                $('.english').css('display', 'none');
                break;
        }
        var n_cards = $('#deck').attr('data-n-cards');
        var next_card = Math.floor(Math.random() * n_cards);
        $('#deck').attr('data-card', next_card);
        $('#deck .card').css('display', 'none');
        $('#deck .card[data-index="'+next_card+'"]').css('display', 'block');
    });
    
});

function successful_request(data){
    console.log(data);
    $('#deck').attr('data-n-cards', data.length);
    $.each(data, function(index, value){
        var html = '<div class="card" data-side="1" data-index="'
                    +index
                    +'"><div class="english">'
                    +value.english
                    +'</div><div class="pinyin">'
                    +value.pinyin
                    +'</div><div class="hanzi">'
                    +value.hanzi
                    +'</div></div>';
        $('#deck').append(html);
    });
}