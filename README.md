# Robot Framework com SeleniumLibrary e Integração GitHub Actions

Este repositório contém exemplos e recursos para começar a usar o Robot Framework com a biblioteca SeleniumLibrary, permitindo a automação de testes de interface de usuário em aplicações da web. Além disso, foi configurada a integração com o GitHub Actions, permitindo a execução automatizada dos testes em um ambiente de integração contínua. O Robot Framework é uma estrutura de automação de testes de código aberto que permite escrever testes de forma fácil e legível, enquanto a biblioteca SeleniumLibrary fornece as ferramentas para interagir com navegadores da web e testar aplicativos da web.

## Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado:

- Python (versão 3.x recomendada)
- pip (gerenciador de pacotes do Python)

## Instalação

Siga estas etapas para configurar o ambiente e instalar as bibliotecas necessárias:

1. Clone este repositório para o seu sistema local ou faça o download do ZIP e extraia-o.

2. Navegue até o diretório do repositório:

```
cd nome-do-repositorio
```

3. Crie um ambiente virtual (opcional, mas recomendado):

```
python -m venv venv
```

4. Ative o ambiente virtual:

   - No Windows:

   ```
   venv\Scripts\activate
   ```

   - No macOS e Linux:

   ```
   source venv/bin/activate
   ```

5. Instale as dependências usando o pip:

```
pip install -r requirements.txt
```

Isso instalará o Robot Framework e a biblioteca SeleniumLibrary.

## Executando os Testes

Os testes automatizados são escritos em arquivos com extensão `.robot`. Para executar os testes, siga estas etapas:

1. Navegue até o diretório onde os arquivos `.robot` estão localizados.

2. Execute um arquivo de teste específico:

```
robot teste/features/cadastrar.robot
```

3. Para executar todos os arquivos de teste em um diretório, você pode usar:

```
robot test/features/
```

## Integração GitHub Actions
A integração com o GitHub Actions foi configurada para executar os testes automaticamente sempre que você fizer um push para o repositório. O fluxo de trabalho (workflow) pode ser encontrado no arquivo .github/workflows/test.yml.

O fluxo de trabalho realiza o seguinte:

1. Configura o ambiente Python.
2. Instala as dependências do projeto.
3. Executa os testes automatizados usando o Robot Framework.
4. Efetua a geração dos logs e reports no Workspace do projeto.


## Contribuindo

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos para este repositório. Basta seguir estas etapas:

1. Abra um pull request neste repositório.

## Recursos Adicionais

Para mais informações sobre como usar o Robot Framework e a biblioteca SeleniumLibrary, consulte a documentação oficial:

- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

---