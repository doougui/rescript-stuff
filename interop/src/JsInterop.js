export const magicNumber = 42;
export const magicString = "hello";
export const isTheWorldBeautiful = false;
export const magicArray = [1, undefined, 3];
export const magicObject = {
  a: 1,
  b: 2,
  c: 3,
};

export const magicMaybeString = null;

export const magicFunction = (a, b) => a + b;
export const magicCallback = (cb) => {
  setTimeout(() => cb(null, "hello"), 1000);
}

export const magicLog = (args) => {
  console.log(...args);
}
