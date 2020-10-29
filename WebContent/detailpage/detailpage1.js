(function(){
    var url = "http://api.visitjeju.net/vsjApi/contents/searchList?apiKey=540anfdbdfd14p9b&locale=kr&category=c1";
    
    $.ajax({
        url : url,
        type : "GET",
        cache : false,
        success : function(data, status){
            if(status == "success") parseJSON(data);
        }
    });

    
})();


function parseJSON(jsonObj) {
     var items = jsonObj.items;

 ///////////////////////////////////////////////////////////////////////////

     var sum = 0;

     var startTime = new Date().getTime();
     
     

////////////////////////////////////////////////////////////////////////////////////////////

    for (var i = 0; i < items.length; i++) {
        if(items[i].title=="대정해변(하모해변)"){
            $('.title').html(items[i].title);
            $('.address').html(items[i].address);
            $('.phoneno').html(items[i].phoneno);
            $('.repPhoto').html(items[i].repPhoto.photoid.imgpath);
            $('.item img').attr('src', items[i].repPhoto.photoid.imgpath); 
            $('.thumbnail img').attr('src', items[i].repPhoto.photoid.imgpat);
        }
            
        // if(items[i].title == "피크닉메이트"){
            // $('.imgcontainer').find('img').attr('src',row[i].SH_PHOTO);
            // $('.imgcontainer').find('img').css("display","inline-block");
            // $('#detailPage').find('.container').find('p').text(row[i].SH_NAME);
            // $('#detailPage').find('.container').find('li').eq(0).find('span').eq(1).html(row[i].INDUTY_CODE_SE_NAME);
            // $('#detailPage').find('.container').find('li').eq(1).find('span').eq(1).html(row[i].SH_ADDR);
            // $('#detailPage').find('.container').find('li').eq(2).find('span').eq(1).html(row[i].SH_PHONE);
            // $('#detailPage').find('.container').find('li').eq(3).find('span').eq(1).html(row[i].SH_WAY);
            // $('#detailPage').find('.container').find('li').eq(4).find('span').eq(1).html(row[i].SH_INFO);
            // $('#detailPage').find('.container').find('li').eq(5).find('span').eq(1).html(row[i].SH_PRIDE);
            // $('#detailPage').find('.container').css("display","inline-block");
           
            
            // break;
        // }
    }


    var endTime = new Date().getTime();
     
     console.log(endTime - startTime);
}


