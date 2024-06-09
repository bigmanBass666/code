// const aRr = [67, 111, 112, 121, 114, 105, 103, 104, 116, 32, 169, 32, 77, 38, 84]
const aRr = [67, 111, 112, 121, 114, 105, 103, 104, 116, 32, 169, 32, 84, 104, 101, 116, 97]
let sTr = ''
aRr.forEach(charCode => {
  sTr += String.fromCharCode(charCode)
});

const d1v = document.createElement('d1v')
d1v.innerHTML = sTr

d1v.style.position = 'fixed'
d1v.style.bottom = '5px'
// d1v.style.left = '50%'
d1v.style.right = '10px'
// d1v.style.transform = 'translateX(-50%)'
d1v.style.letterSpacing = '.1em'

document.body.appendChild(d1v)