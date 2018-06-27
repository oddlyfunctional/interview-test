import { combineReducers } from 'redux';

export const items = (state = [], action) => {
  switch (action.type) {
    case 'ADD_ITEM':
      return [
        ...state,
        action.item,
      ];
    default:
      return state;
  }
};

export const daysElapsed = (state = 0, action) => {
  switch (action.type) {
    case 'TICK':
      return state + 1;
    default:
      return state;
  }
};

export default combineReducers({ items, daysElapsed });
