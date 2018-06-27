let nextId = 2;

export const addItem = (type, quality) => ({
  type: 'ADD_ITEM',
  item: {
    id: nextId++,
    type,
    quality,
    daysRemaining: 20,
  },
});

export const tick = () => ({ type: 'TICK' });
