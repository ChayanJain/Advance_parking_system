    
    var btn=document.getElementById('click');
    
btn.addEventListener('click', generate_qr);
 function generate_qr(){
     
     
     var qrtext=document.getElementById('fname');
     var qrtext1=document.getElementById(lname);
    // var fruits = [qrtext, qrtext1];
     
     var url='http://chart.apis.google.com/chart?cht=${qrtext}&chl=&chs=250x250';
     
     document.getElementById('qr').src=url;
     
 }