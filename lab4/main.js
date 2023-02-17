const table = () => {

    const number = window.prompt("Enter a number: ");
    
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
        let num = window.prompt('Introduce un numero :)')
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

const promedio = (matriz) => {
    
    
    
    for(let i=0; i < matriz.length; i++){
        let suma = 0;
        for(let j=0; j < matriz[i].length; j++){
            suma += matriz[i][j];
        }
        console.log(`Promedio de la fila ${i}: ${suma/matriz[i].length}`);
    }
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

table();
// juegoSuma();
// contador();
// invertirNum();
