$(function() {
    var name_error = flase;
    var pwd_error = flase;

    if({{error_name}}==1)
    {
        $('.user_error').html('用户名错误').show();
    }
    if({{error_pwd}}==1)
    {
        $('.pwd_error').html('密码错误').show();
    }
    $('.name_input').blur(function(){
        if($('.name_input').val().length==0){
            $('.user_error').html('请填写用户名').show();
            name_error=false;
        }else{
            $('.user_error').hide();
            name_error=true;
        }
    });

    $('.pass_input').blur(function(){
        if($(this).val().length==0){
            $('.pwd_error').html('请输入密码').show();
            pwd_error=false;
        }else{
            $('.pwd_error').hide();
            pwd_error=true;
        }
    });

    $('form').submit(function(){
        $('.name_input').blur();
        $('.pass_input').blur();
        return name_error && pwd_error;
    });

})
