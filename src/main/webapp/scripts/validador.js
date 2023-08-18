/**
 * validação de formulário
 * @author Ronaldo Barros
 */

 function validar() {
	 //alert('teste')
	 let nome = frmContato.nome.value
	 let fone = frmContato.fone.value
	 if(nome === "") {
		 alert("Prenencha o campo Nome")
		 frmContato.nome.focus()
		 return false
	 }else if (fone === "") {
		 alert("Prenencha o campo Fone")
		 frmContato.fone.focus()
		 return false
	 }else{
		 document.forms["frmContato"].submit()
	 }
 }