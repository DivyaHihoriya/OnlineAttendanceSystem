/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function togglePassword(){
    var passwordField = document.getElementById("password");

    if(passwordField.type === "password"){
        passwordField.type = "text";
    }else{
        passwordField.type = "password";
    }
}

