class productsModel{
 String ? name ;
 String ? Category;
 double ? price ; 




 productsModel ({this.Category , this.name , this.price});


 Map<String , dynamic > toMap(){

  return {
    "name":name , 
    "category" : Category , 
    "price" : price , 
  };
 }
 }