import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  nome: any;
  idade: string = "20";

  lancarDado(): number{
    return Math.floor(Math.random() * 6)+1;
  }

  alterarNome(inputEvent: any): void {
    console.log(inputEvent.target.value);
    this.nome = inputEvent.target.value;
  }

  adicionar (): void{
    console.log("Adicionando...")
  }
}
