# Is English

A fast language detection script for English.

## Install

```
npm install is-english --save
```

## Usage

```javascript
const isEnglish = require("is-english");

isEnglish(`The quick brown fox jumps over the lazy dog`); //true
isEnglish(`Rápidos saltos de zorro marrón`); //false
isEnglish(`kërcime të shpejta me kafe ngjyrë kafe`); //false
```

## Limitations

The library is meant for checking large documents such as HTML pages in the quickest manner possible and is not meant to check individual words or complex documents. For a more robust language detection package check out [LangCheck](https://www.npmjs.com/package/langcheck)

## Maintainers

- [Jay Goodfellow](https://github.com/jaygoodfellow)
- [Arcane Digital Inc](https://github.com/arcanedigital)

## License

Copyright (c) 2017, Arcane & Jay Goodfellow.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
