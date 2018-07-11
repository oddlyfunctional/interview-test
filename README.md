# Teste

Faça o teste com calma, não há uma única resposta certa; o importante é demonstrar domínio sobre as habilidades requeridas. Não há um limite de tempo rígido, mas demonstre saber gerenciar as prioridades de acordo com quanto tempo já passou. O teste deve levar aproximadamente 2h.

## Setup

```
git clone https://github.com/oddlyfunctional/interview-test.git
cd interview-test
bundle install
yarn install
```

### Para rodar o servidor

```
bin/rails s
```

### Para rodar os testes de back-end

```
bin/rspec
```

### Para rodar os testes de front-end

```
yarn test
```

## Dicas

- Não há vergonha em usar o Google, mesmo para coisas básicas. Conseguir solucionar situações inesperadas é o mais importante.
- Comunique-se frequentemente, explique sua linha de raciocínio e, caso veja algo errado, mesmo que decida não corrigir por conta do tempo, explique o porquê de estar errado e o que você faria para consertar.
- Sinta-se livre para refatorar, pode ser que facilite realizar algumas das tarefas.
- Caso veja oportunidades de otimização pode aproveitar.
- Caso sinta necessidade, pode adicionar quaisquer testes que quiser.
- Todas as bibliotecas que você precisa já estão adicionadas, evite adicionar novas. Demonstre suas habilidades com as tarefas pedidas.
- Para as chamadas AJAX, use a [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API).
- A ordem das tarefas é apenas sugerida, não obrigatória.

## O que será avaliado

- Método de raciocínio
- Capacidade de debugging
- Familiaridade com testes automatizados
- Tomadas de decisão
- Habilidade de abstração

## Tarefas

- [ ] Construir uma API para calcular novos atributos dos items a cada tick e conectá-la ao front-end. O back-end implementa apenas as regras de negócio e não armazena os dados.
- [ ] Adicionar "Slice of Bread" aos tipos de itens (testes para o novo cálculo já estão escritos, mas pendentes, no arquivo `ROOT/spec/services/item_spec.rb`).
- [ ] Aplicar CSS (mockup em `ROOT/interview-test.png`).

![mockup](https://github.com/oddlyfunctional/interview-test/blob/master/interview-test.png)
