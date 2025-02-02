function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  var x: int = 5;
  var y: int = baz(x);
  print(y);
}

//Error: This code will cause an unexpected integer overflow.
//The value of x will be 5, the function baz(x) will return 11.
//However, if x is greater than 2147483647, the value of baz(x) will be negative due to the integer overflow.
//This will cause unexpected behavior in the program. This is because Hack uses 32-bit integers by default.
//To solve this, use 64-bit integers, which should handle overflow issues.