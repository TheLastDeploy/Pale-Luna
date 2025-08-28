const readline = require('readline');
const { exec, execSync } = require('child_process');
const prompt = require('prompt-sync')();
const fs = require('fs');
const path = require('path');

let portugues = false;
let english = false;
let selectedIndex = 0; // O índice de seleção será usado apenas nesta tela.

const menuItems = [
    'PORTUGUÊS (BR)',
    'ENGLISH (US)'
];

// ============================================================================
// Lógica de Renderização e Navegação
// ============================================================================

function desenharMenu() {
    console.clear();
    console.log ("███████████████████████████████████████████████████████████████████")
    console.log ("██                                                               ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                                                               ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                           ██████                              ██")
    console.log ("██                                                               ██")
    console.log ("███████████████████████████████████████████████████████████████████")
    console.log ("")
    console.log ("===========================================================================")
    console.log ("[LANGUAGE SELECTION] / [SELEÇÃO DE IDIOMA]")
    console.log ("===========================================================================")

    menuItems.forEach((item, index) => {
        if (index === selectedIndex) {
            console.log(`\x1b[91m[> ${item} <] \x1b[96m`);
        } else {
            console.log(`   ${item}`);
        }
    });

    console.log ("===========================================================================")
    console.log('\nUse as setas para cima/baixo para navegar, Enter para selecionar.');
}

// Inicia a interface de leitura
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

desenharMenu();
process.stdin.setRawMode(true);
process.stdin.resume();

process.stdin.on('data', (chunk) => {
    const key = chunk.toString('hex');

    switch (key) {
        case '1b5b41': // Seta para cima
            selectedIndex = (selectedIndex - 1 + menuItems.length) % menuItems.length;
            desenharMenu();
            break;
        case '1b5b42': // Seta para baixo
            selectedIndex = (selectedIndex + 1) % menuItems.length;
            desenharMenu();
            break;
        case '0d': // Enter
            console.clear();
            process.stdin.setRawMode(false);
            process.stdin.pause();

            if (selectedIndex === 0) {
                portugues = true;
                require('./menuBR.js');
            } else {
                english = true;
                require('./menuEN.js');
            }

            break;
        case '03': // Ctrl+C (SIGINT)
            console.clear();
            console.log ("===========================================================================")
            console.log("[CLOSING...]");
            console.log ("===========================================================================")
            process.exit();
            break;
        default:
            // Ignora outras teclas para evitar erros de renderização
            break;
    }
});