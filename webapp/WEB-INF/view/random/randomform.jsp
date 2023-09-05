<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Random Pet Selector</title>
	<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
}

.container {
  text-align: center;
}

.roulette {
  position: relative;
  width: 300px;
  height: 300px;
  border-radius: 10px;
  border: 5px solid #ccc;
  overflow: hidden;
  margin-bottom: 20px;
}

.items {
  position: absolute;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  animation: spin 4s linear infinite;
  animation-delay: -1s; /* Add a negative delay to make items start off-screen */
}

.item {
  width: 100px;
  height: 100px;
  background-color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 10px;
  font-size: 16px;
  cursor: pointer;
}

.spin-button {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #007bff;
  border: none;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
}

@keyframes spin {
  0% { transform: translateY(-100%); }
  100% { transform: translateY(0); }
}
	</style>
    
    <script>  
    let spinning = false;
    let selectedItemIndex = -1;

    function spinRoulette() {
      if (!spinning) {
        const items = document.querySelectorAll('.item');
        selectedItemIndex = Math.floor(Math.random() * items.length);

        const roulette = document.querySelector('.roulette .items');
        roulette.style.animation = 'none';
        void roulette.offsetWidth; // Force reflow
        roulette.style.animation = 'spin 4s linear infinite';

        spinning = true;
      }
    }

    document.querySelectorAll('.item').addEventListener('click', () => {
      if (spinning) {       
        for (let i = 0; i < items.length; i++) {
          if (i === selectedItemIndex) {
            items[i].style.animation = 'none';
          }
        }
        spinning = false;
      }
    });
    </script>
    
</head>		

<body>
 
 <div class="container">
    <div class="roulette">
      <div class="items">
        <!-- Add your pet items here with their names -->
        <div class="item">노즈워크 화려하게</div>
        <div class="item">터그놀기 100번</div>
        <div class="item">산책갔다 맛있는거 먹기</div>
            <div class="item">간식사주기 </div>
      	    <div class="item">옷사주기</div>
            <div class="item">반려견놀이터가기</div>
        
        <!-- Add more items as needed -->
      </div>
    </div>
    <button class="spin-button" onclick="spinRoulette()"><h1>선택!</h1></button>
  </div>


</body>
</html>