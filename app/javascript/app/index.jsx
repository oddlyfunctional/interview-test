// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import { createStore } from 'redux';

import reducers from './reducers';
import Root from './Root';

const render = (store, node) => {
  ReactDOM.render(
    <Root store={store} />,
    document.body.appendChild(node),
  );
};

document.addEventListener('DOMContentLoaded', () => {
  const store = createStore(
    reducers,
    window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__(),
  );
  const node = document.createElement('div');
  render(store, node);

  store.subscribe(() => render(store, node));
})
