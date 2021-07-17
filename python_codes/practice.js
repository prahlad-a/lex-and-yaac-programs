
let maximum = parseInt(prompt("Enter the number to be guessed"));
while (!maximum) {
    maximum = parseInt(prompt("Enter the valid number"));
}

const target = Math.floor(Math.random() * maximum) + 1

let guess = parseInt(prompt("Enter your first guess"));
let count = 1;

while (parseInt(guess) != target) {
    if (guess == 'q') {
        break;
    }
    count += 1;
    if (guess < target) {
        guess = prompt("Too low! take another chance");
    } else {
        guess = prompt("Too High! take another chance");
    }
}
console.log(`you took ${count} chances`)