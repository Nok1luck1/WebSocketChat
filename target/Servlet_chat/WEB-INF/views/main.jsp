<%--
  Created by IntelliJ IDEA.
  User: nok1l
  Date: 03.04.2021
  Time: 03:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Chat</title>
    <style>
        .chatbox{
            display:none;
        }
        .messages {
            background-color: #2843e2;
            width: 500px;
            padding:20px;
        }
        .messages .msg{
            background-color: #ffffff;
            border-radius:10px ;
            margin-bottom: 10px;
            overflow: hidden;
        }
        .messages .msg .from{
            background-color: #a65044;
            line-height: 30px;
            text-align:center;
            color:white;
        }
        .messages .msg .text{
            padding:10px;

        }
        textarea.msg{
            witdh:540 px;
            padding: 10px;
            resize:none;
            border:none;
        }
    </style>
    <script>
        let chatUnit={
        init (){
            this.startbox= document.querySelector(".start");
            this.chatbox=document.querySelector(".chatbox");

            this.startBtn= this.startbox.querySelector("button");
            this.nameInput= this.startbox.querySelector("input");
            this.bindEvents();
        },
        bindEvents(){
            this.startBtn.addEventListener("click",e=>this.openSocket())

        },
            openSocket(){
            this.ws=new WebSocket("ws://localhost:8080/Servlet_chat_war/chat");
            this.name= this.nameInput.value;
            this.startbox.style.display="none";
                this.chatbox.style.display="block";


            }
        }
        window.addEventListener("load",e=>chatUnit.init())
    </script>
</head>
<body>
<h1>ChatBox</h1>
<div class="start">
    <input type="text" class="username" placeholder="enter name,....">
    <button id="start">start</button>
</div>


<div class="chatbox">
<div class="messages">
<div class="msg">
    <div class="from">vasia</div>
    <div class="text">helo pidor</div>
</div>

</div>
<textarea class="msg">

</textarea>
</div>
</body>
</html>
