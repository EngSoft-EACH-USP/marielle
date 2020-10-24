require 'test_helper'

class RawRegistrosOcorrenciasSspSpGovBrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_registros_ocorrencias_ssp_sp_gov_br = raw_registros_ocorrencias_ssp_sp_gov_brs(:one)
  end

  test "should get index" do
    get raw_registros_ocorrencias_ssp_sp_gov_brs_url
  end

  test "given JSON request, should get list of registers" do
    get raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json }
    assert_response :success
    data = JSON.parse(@response.body)
    assert data.size > 0
  end

  test "should show raw_registros_ocorrencias_ssp_sp_gov_br" do
    get raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
    assert_response :success
  end

  test "given JSON request, should get raw_registros_ocorrencias_ssp_sp_gov_br" do
    get raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br), params: { format: :json }
    assert_response :success

    data = JSON.parse(@response.body)
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, data['dataocorrencia']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, data['horaocorrencia']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, data['logradouro']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.numero, data['numero']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, data['bairro']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, data['cidade']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.uf, data['uf']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, data['descricaolocal']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, data['nomepessoa']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.rg, data['rg']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, data['nacionalidade']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, data['sexo']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, data['datanascimento']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, data['estadocivil']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, data['profissao']
  end

  test "should get new" do
    get new_raw_registros_ocorrencias_ssp_sp_gov_br_url
    assert_response :success
  end

  test "should create raw_registros_ocorrencias_ssp_sp_gov_br" do
    assert_difference('RawRegistrosOcorrenciasSspSpGovBr.count') do
      post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal } }
    end

    assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_br_url(RawRegistrosOcorrenciasSspSpGovBr.last)
  end

  test "given JSON request, should create raw_registros_ocorrencias_ssp_sp_gov_br" do
    raw_registros_ocorrencias_ssp_sp_gov_br = { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal }
    assert_difference('RawRegistrosOcorrenciasSspSpGovBr.count') do
      post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
    end

    assert_equal 201, @response.status

    body = JSON.parse(@response.body)
    assert body['message'].include?('sucesso')

    data = body['data']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, data['dataocorrencia']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, data['horaocorrencia']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, data['logradouro']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.numero, data['numero']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, data['bairro']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, data['cidade']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.uf, data['uf']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, data['descricaolocal']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, data['nomepessoa']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.rg, data['rg']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, data['nacionalidade']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, data['sexo']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, data['datanascimento']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, data['estadocivil']
    assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, data['profissao']
  end
end
