<%-- 
    Document   : signup
    Created on : Mar 27, 2021, 12:12:11 PM
    Author     : Start
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        
        <!-- Compiled and minified CSS -->
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background:url(img/bac1.jpg);background-size: cover; background-attachment: fixed; ">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 class="center-align">Register Here</h3>
                            <h5 id="msg" class="center-align"> </h5>
                            <div class="form center">
                            <!-- -----------------Creating form--------------->
                            <form action="Register" method="post" id="myform">
                                <input type="text" name="user-name" placeholder="Enter your name here" />
                                <input type="password" name="user-password" placeholder="Enter your password here" />
                                <input type="email" name="user-email" placeholder="Enter your email here" />
                                
                                <div class="file-field input-field">
                                    <div class="btn">
                                        <span>File</span>
                                        <input name="image" type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text">
                                    </div>
                                  </div>
                                <button type="submit" class="btn "> Submit</button>

                            </form>

                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display: none ">
                                <div class="preloader-wrapper big active">
                                <div class="spinner-layer spinner-blue">
                                  <div class="circle-clipper left">
                                    <div class="circle"></div>
                                  </div><div class="gap-patch">
                                    <div class="circle"></div>
                                  </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                  </div>
                                </div>

                                <div class="spinner-layer spinner-red">
                                  <div class="circle-clipper left">
                                    <div class="circle"></div>
                                  </div><div class="gap-patch">
                                    <div class="circle"></div>
                                  </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                  </div>
                                </div>

                                <div class="spinner-layer spinner-yellow">
                                  <div class="circle-clipper left">
                                    <div class="circle"></div>
                                  </div><div class="gap-patch">
                                    <div class="circle"></div>
                                  </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                  </div>
                                </div>

                                <div class="spinner-layer spinner-green">
                                  <div class="circle-clipper left">
                                    <div class="circle"></div>
                                  </div><div class="gap-patch">
                                    <div class="circle"></div>
                                  </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                  </div>
                                </div>
                              </div>
        
                                <h5>Please wait ...</h5>
                             </div>
                          
                        </div>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        
        
        
        <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                
                console.log("Page is ready")
                
                
                $("#myform").on('submit',function(event){
                    event.preventDefault();
                   // If only text then this... var f = $(this).serialize();
                   
                   //For image this rule
                   
                   let f = new FormData(this);
                    
                    
                    
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();
                    
                    $.ajax({
                     url:"Register" ,
                     data:f,
                     type:'POST',
                     success:function(data, textStatus,jqXHR){
                         console.log(data);
                         console.log("Success..........");
                         $(".loader").hide();
                         $(".form").show();
                         if(data.trim()==='Done'){
                             $('#msg').html("Successfully Registered !!")
                             $('#msg').addClass('green-text');
                             
                         }else{
                             
                             $('#msg').html("Something went wrong on server !!")
                             $('#msg').addClass('red-text');
                         }
                        
                    
                         
                     },
                     
                     error: function (jqXHR, textStatus,errorThrown){
                         console.log(data);
                         console.log("Error..........");
                         $(".loader").hide();
                         $(".form").show();
                         $('msg').html("Something went wrong on server !!")
                         $('#msg').addClass('red-text');
                         
                     },
                     
                     processData: false ,
                     contentType: false
                        
                    })
                    
                    
                    
                    
                })
            })
        </script>
    </body>
</html>
