# Teste

Faça o teste com calma, não há uma única resposta certa; o importante é demonstrar domínio sobre as habilidades requeridas. Não há um limite de tempo rígido, mas demonstre saber gerenciar as prioridades de acordo com quanto tempo já passou.

## Setup

```
git clone https://github.com/oddlyfunctional/interview-test.git
cd interview-test
bundle install
yarn install
```

### Para rodar o servidor

```
bundle exec rails s
```

### Para rodar os testes de back-end

```
bundle exec rspec
```

### Para rodar os testes de front-end

```
yarn test
```

## Dicas

- Comunique-se frequentemente, explique sua linha de raciocínio e, caso veja algo errado, mesmo que decida não corrigir por conta do tempo, explique o porquê de estar errado e o que você faria para consertar.
- Sinta-se livre para refatorar, pode que facilite realizar algumas das tarefas.
- Caso veja oportunidades de otimização pode aproveitar.
- Caso sinta necessidade, pode adicionar quaisquer testes que quiser.
- Evite bibliotecas adicionais, demonstre que você é capaz de realizar as tarefas pedidas.
- Para as chamadas AJAX, use a [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API).

## Tarefas

- [ ] Escrever teste para o reducer `items` quando recebe uma action `'ADD_ITEM'`.
- [ ] Construir uma API para calcular novos atributos dos items a cada tick e conectá-la ao front-end.
- [ ] Adicionar "Slice of Bread" aos tipos de itens (testes para o novo cálculo já estão escritos, mas pendentes, no arquivo `ROOT/spec/services/item_spec.rb`).
- [ ] Aplicar CSS (mockup em `ROOT/interview-test.png`).

![mockup](https://github.com/oddlyfunctional/interview-test/blob/master/interview-test.png)
