import { Injectable } from "@angular/core";
import { Cliente } from "./cliente.model";

@Injectable({providedIn: 'root'})

export class ClienteService{
  private clientes: Cliente[] = [];

  getClientes(): Cliente[]{
    return [...this.clientes];
  }

  adicionarCliente(nome: string, fone: string, email: string){
    const Cliente: Cliente = {nome, fone, email};
  }
}
