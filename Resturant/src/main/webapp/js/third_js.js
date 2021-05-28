
function decrement(id,price,id2){


var a=document.getElementById(id).value;
console.log(a);
if(a>=1){
document.getElementById(id).value=a-1;
document.getElementById(id2).value=(a-1)*price;

}
}

function increment(id,price,id2){

var b=document.getElementById(id).value;
console.log(b);
b++;
document.getElementById(id).value=b;
document.getElementById(id2).value=b*price;

}


/*


<input value="-" type="button" onclick="decrement(${item.product.fid }, ${item.product.fPrice }, ${count } )"><input type="number" id=${item.product.fid }  ><input value="+" type="button" onclick="increment(${item.product.fid }, ${item.product.fPrice }, ${count } )"></td>
				<td><input  id="${count }" /></td>
var new_item=JSON.parse(localStorage.getItem("new_item"));
var new_price=JSON.parse(localStorage.getItem("new_price"));
var quantity=JSON.parse(localStorage.getItem("quantity"));





var table = document.getElementById("myTableData");
var sum=0;
var len=new_item.length;
qus=[];
for(var i=0;i<len;i++){

var rowCount = table.rows.length;
var row = table.insertRow(rowCount);
row.insertCell(0).innerHTML=new_item[i];
row.insertCell(1).innerHTML= "<button type=button class=butt onclick=dec("+i+")>-</button>"+"<input class=butt id="+i+" value="+quantity[i]+" disabled /><button type=button class=butt onclick=inc("+i+")>+</button>";
row.insertCell(2).innerHTML= new_price[i];
qus.push(quantity[i]*new_price[i]);
row.insertCell(3).innerHTML= "<input class=butt id=money"+i+" value="+quantity[i]*new_price[i]+" disabled>";

}


for(var i=0;i<len;i++){
    sum+=qus[i];
    console.log(sum);
}

 document.getElementById("total").innerHTML = "<input type=text id=to value="+sum+" disabled>" ;
 localStorage.setItem("amount",sum);
 

function dec(refer){
    if(quantity[refer]!=0){
 quantity[refer]-=1;
 document.getElementById(refer).value=quantity[refer];
 document.getElementById("money"+refer).value=quantity[refer]*new_price[refer];
 sum=0;
 for(var i=0;i<len;i++){
     sum+=quantity[i]*new_price[i];
 }
 document.getElementById("to").value=sum;

    }

};


function inc(refer){
    quantity[refer]++;
    document.getElementById(refer).value=quantity[refer];
    document.getElementById("money"+refer).value=quantity[refer]*new_price[refer];
    sum=0;
    for(var i=0;i<len;i++){
        sum+=quantity[i]*new_price[i];
    }
    document.getElementById("to").value=sum;
};

var count=0;
function notify(){
   
    if(count==0)
    alert("Order Placed...!!!!!!!");
    else
    alert("Your order already placed")
    count++;
}

*/