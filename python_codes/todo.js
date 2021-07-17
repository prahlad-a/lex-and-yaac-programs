let msg = prompt("What would you like to to");
arr = [];
while (msg !== 'quit' || msg !== 'q') {


    if (msg == 'new') {
        new_todo = prompt("Enter new todos");
        arr.push(new_todo);
        console.log(`${new_todo} is added to the array`)
        console.log("********************")
    }
    if (msg == 'list') {
        console.log("********************")
        for (let i of arr) {
            console.log(`${i} : ${arr[i]}`);
        }
        console.log("********************")

    }
    if (msg == 'delete') {
        index = prompt("Enter the index which you want to delete");
        deleted = arr.splice(index, 1);
        console.log(`${deleted[0]} is deleted`)
        console.log("********************")

    }
    if (msg == 'quit' || msg == 'q') {
        break;
    }
    else {

    }
    msg = prompt("What would you like to to");
}
console.log("Ok! you quitted")