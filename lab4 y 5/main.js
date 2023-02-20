const table = () => {

    const number = window.prompt("Introduce el numero hasta el cual veremos sus cuadrados y cubos: ");
    
    escritura = document.getElementById('tabla');

    textoDocumento = `Cuadrados y cubos desde 1 hasta ${number}: <br>`;
    for(let i=1; i <= number; i++){
        let cube = Math.pow(i ,2);
        let square = Math.pow(i ,3);
        
        textoDocumento = textoDocumento + `${i} ${cube} ${square} <br>`;
    }

    escritura.innerHTML = textoDocumento;
    return;
};

const juegoSuma = () => {
    resultadoJuego =  document.getElementById('resultado');

    numero1 = Math.floor(Math.random() * 100);
    numero2 = Math.floor(Math.random() * 100);

    inicioTiempo = window.performance.now();

    const respuesta = window.prompt(`¿Cuánto es ${numero1} + ${numero2}?`);

    
    finTiempo = window.performance.now();

    tiempo = (finTiempo - inicioTiempo) / 1000;

    if (respuesta == numero1 + numero2) {
        resultadoJuego.innerHTML = `¡Muy bien! ¡Has acertado! tu tiempo fue de ${tiempo} segundos`;
    }else{
        resultadoJuego.innerHTML = `¡Has fallado! tu tiempo fue de ${tiempo} segundos`;
    }
};

const contador = () => {
    const resultadoContador = document.getElementById('contador');

    const tam = window.prompt('De que tamanio quieres tu arreglo?');

    let arr = [];
    for(let i = 0; i < tam; i++){
        let num = window.prompt('Introduce un numero para el arreglo :)')
        arr.push(num);  
    }

    let negativos = 0;
    let positivos = 0;
    let ceros = 0;

    for(let i=0; i < arr.length; i++){
        if(arr[i] < 0){
            negativos++;
        }else if(arr[i] > 0){
            positivos++;
        }else{
            ceros++;
        }
    }
    resultadoContador.innerHTML = `Positivos: ${positivos} Negativos: ${negativos} Ceros: ${ceros}`;
};

const promedio = () => {

    const promedioText = document.getElementById('promedios');

    const filas = window.prompt('Cuantas filas quieres  en tu matriz?');
    const col = window.prompt('Cuantas columnas quieres en tu matriz?');

    let matriz = [];

    for(let i=0; i < filas; i++){
        matriz[i] = [];
        for(let j=0; j < col; j++){
            matriz[i][j] = window.prompt(`Introduce el numero de la fila ${i} y columna ${j}`);
        }
    }
    
    let text= '';
    
    for(let i=0; i < filas; i++){
        let suma = 0;
        for(let j=0; j < col; j++){
            suma += parseInt(matriz[i][j]);
        }
        let promedio = suma / col;
        text += `El promedio de la fila ${i} es: ${promedio} <br>`;
    }

    promedioText.innerHTML = text;
};

const invertirNum = () =>{

    const num = window.prompt('Escribe el numero a invertir');

    const invertido = document.getElementById('invertido');

    let numText = num.toString();
    let invertedText = '';
    
    for(n in numText){
        let char = numText.charAt(n); 
        invertedText = char + invertedText;
        
    }

    const invertedNum = parseInt(invertedText);

    invertido.innerHTML = `El numero invertido es: ${invertedNum}`;


};

const serieFibonacci = () =>{
    const fibonacciText = document.getElementById('fibonacci');

    let num = window.prompt('Escribe el numero de la serie fibonacci que quieres');
    let arr = [0,1];
    let i = 2;
    while(i < num){
        arr.push(arr[i-1] + arr[i-2]);
        i++;
    }
    
    fibonacciText.innerHTML = `La serie fibonacci de los primeros ${num} numeros es: ${arr}`;

}


alert('Bienvenido al laboratorio 4, vamos a jugar!');

table();
juegoSuma();
contador();
invertirNum();
promedio();
serieFibonacci();

