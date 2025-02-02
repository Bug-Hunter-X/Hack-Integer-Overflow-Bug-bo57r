function foo(x: int64): int64 {
  return x + 1;
}

function bar(x: int64): int64 {
  return foo(x) * 2;
}

function baz(x: int64): int64 {
  return bar(x) + 1;
}

function main(): void {
  var x: int64 = 5;
  var y: int64 = baz(x);
  print(y);
}

//This code uses 64-bit integers which will handle overflow issues.