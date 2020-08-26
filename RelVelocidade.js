Cmp.RelVelocidade = function() {
    
    var private = {

        render: function() {

            Cmp.createInput({
                id: 'inputPlaca',
                renderTo: '#divInputPlaca',
                label: 'Placa do veículo',
                width: '200px'
            });

            Cmp.createButton({
                id: 'btnBuscar',
                renderTo: '#divBtnConsultar',
                text: 'Buscar',
                handler: function() {
                    private.buscar();
                }
            });

            Cmp.createGrid({
                id: 'gridDadosVeiculos',
                renderTo: '#divCmpGridVeiculo',
                header: [
                  	{
                        text: 'Placa',
                        field: 'placa',
                        width: 150
                    },
					
					{
                        text: 'Nome',
                        field: 'nome'
                    },
					
					{
                        text: 'Data_Ocorrencia,
                        field: 'data_ocorrencia',
                        
                    },
					
					{
                        text: 'Vel. Max.',
                        field: 'vel_maxima',
                        width: 150
                    },
					
					{
                        text: 'Velocidade',
                        field: 'velocidade',
                        width: 150
                    },
					
					{
                        text: 'Diferenca',
                        field: 'diferenca',
                        width: 150
                    },
					
					{
                        text: 'Latitude',
                        field: 'latitude',
                        width: 150
                    },
					
					{
                        text: 'Longitude',
                        field: 'longitude',
                        width: 150
                    },

				

					
                ]
            });
        },

        buscar: function() {
            Cmp.showLoading();

            Cmp.request({
                url: 'index.php?mdl=relVelocidade&file=ds_velocidade.php',
                params: {
                    placa: Cmp.get('inputPlaca').getValue()
                },
                success: function(res) {
                    Cmp.hideLoading();
                    if(res.status == 'success') {
                        Cmp.get('gridDadosVeiculos').loadData(res.data);
                    } else {
                        Cmp.showErrorMessage(res.message || 'Ocorreu um erro na requisição');
                    }
                }
            });
        }

    };

    this.init = function() {
        private.render();
    }

}