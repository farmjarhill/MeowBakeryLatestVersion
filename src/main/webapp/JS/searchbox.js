
  let names = [
    "Bánh Opera",
    "Red Velvet",
    "Bánh Khúc Cây",
    "Crepe Matcha",
    "Bánh Eclair",
    "Cupcake Cam",
    "Cupcake Oreo",
    "Cupcake Dâu",
    "Cupcake Chanh",
    "Cupcake Việt Quất",
    "Lemon Blueberry",
    "Oreo Funfetti",
    "Vanilla",
    "Pink Champagne",
    "Mini Chocolate",
    "Chipmunk",
    "Cinnamon",
    "Coconut Lemon",
    "Coconut Raspberry",
    "Coconut Monster",
    "Shining Star",
    "Su kem sầu riêng",
    "Blueberry",
    "Spider",
    "Tic Tac Toe",
    "Tiramisu Chocolate",
    "Tiramisu Matcha",
    "Tiramisu Chanh Dây",
    "Tiramisu Dâu",
    "Tiramisu Bí Đỏ",
    "Mochi Phúc Bồn Tử",
    "Mochi Kem Matcha",
    "Mochi Kem Dừa Dứa",
    "Mochi Kem Xoài",
    "Mochi Chocolate",
    "Macaron Chocolate",
    "Macaron Dâu",
    "Macaron Xoài",
    "Macaron Việt Quất",
    "Macaron Combo Full",
  ];
  //Sort names in ascending order
  let sortedNames = names.sort();
  
  //reference
  let input = document.getElementById("input");
  
  //Execute function on keyup
  input.addEventListener("keyup", (e) => {
    //loop through above array
    //Initially remove all elements ( so if user erases a letter or adds new letter then clean previous outputs)
    removeElements();
    for (let i of sortedNames) {
      //convert input to lowercase and compare with each string
  
      if (
        i.toLowerCase().startsWith(input.value.toLowerCase()) &&
        input.value != ""
      ) {
        //create li element
        let listItem = document.createElement("li");
        //One common class name
        listItem.classList.add("list-items");
        listItem.style.cursor = "pointer";
        listItem.setAttribute("onclick", "displayNames('" + i + "')");
        //Display matched part in bold
        let word = "<b>" + i.substr(0, input.value.length) + "</b>";
        word += i.substr(input.value.length);
        //display the value in array
        listItem.innerHTML = word;
        document.querySelector(".list").appendChild(listItem);
      }
    }
  });
  function displayNames(value) {
    input.value = value;
    removeElements();
  }
  function removeElements() {
    //clear all the item
    let items = document.querySelectorAll(".list-items");
    items.forEach((item) => {
      item.remove();
    });
  }