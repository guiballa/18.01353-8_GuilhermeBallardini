import { ClienteService } from './../cliente.service';
import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Cliente } from '../cliente.model';

@Component({
  selector: 'app-cliente-inserir',
  templateUrl: './cliente-inserir.component.html',
  styleUrls: ['./cliente-inserir.component.css']
})
export class ClienteInserirComponent implements OnInit {


  // nome: string;
  // fone: string;
  // email: string;

  //@Output() clienteAdicionado = new EventEmitter<Cliente>();

  constructor(private ClienteService: ClienteService) { }

  ngOnInit(): void {
  }
  onAdicionarCliente(form: NgForm){
    if(form.invalid) return;
    this.ClienteService.adicionarCliente(
      form.value.nome,
      form.value.fone,
      form.value.email
    );

  }
}
