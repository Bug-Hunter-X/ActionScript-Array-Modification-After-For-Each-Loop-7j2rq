function someFunction():void{

        trace("this is a trace statement");
        var myArray:Array = new Array();
        myArray.push("This is a string");
        myArray.push(123);
        myArray.push(true);

        for each (var element in myArray) {
            trace(element);
        }

        //Error is here
        myArray[3] = "Adding an element to index 3";

        for each (var element in myArray) {
            trace(element);
        }
    }