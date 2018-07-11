// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import { createStore, applyMiddleware, compose } from 'redux';

import reducers from './reducers';
import Root from './Root';

const later = ({ dispatch, getState }) => next => action => {
  if (typeof action === 'function') {
    return action(dispatch, getState);
  }

  return next(action);
};

const render = (store, node) => {
  ReactDOM.render(
    <Root store={store} />,
    document.body.appendChild(node),
  );
};

document.addEventListener('DOMContentLoaded', () => {
  const initialState = {
    items: [
      { id: 1, type: 'Gorgonzola Cheese', daysRemaining: 2, quality: 3 },
    ],
  };

  const middlewares = [later];

  const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

  const store = createStore(
    reducers,
    initialState,
    composeEnhancers(applyMiddleware(...middlewares)),
  );
  const node = document.createElement('div');
  render(store, node);

  store.subscribe(() => render(store, node));
})
