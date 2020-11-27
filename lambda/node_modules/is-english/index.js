module.exports = (text, options = { threshold: 0.001 }) => {
  if (!text) throw new Error("Text is required");
  var threshold = options.threshold;
  let sample = text.replace(/\s+/g, "").replace(/(\s?-\s)/g, "");
  const found = sample.match(/[^\u0000-\u00BE’“”–©\u00D7\u00F7]+/gim) || [];

  const sup = indocheck(sample);

  const percent = (found.length + sup) / sample.length;

  if (percent < threshold) return true;

  return false;
};

function indocheck(sample) {
  const words = [
    "selamatpagi",
    "selamatsiang",
    "selamatmalam",
    "beberapa",
    "bersama",
    "dilakukan",
    "terimakasih",
    "permisimas",
    "permisiadek",
    "permisipak",
    "berbagi",
    "sommige", //start of dutch words
    "toevoegen",
    "uitgeschakeld",
    "afbeelding",
    "verschillen",
    "Contactgegevens"
  ];
  return words.reduce((count, word) => {
    count += (sample.match(new RegExp(word, "gim")) || []).length;
    return count;
  }, 0);
}
