let nextId = 2;

export const addItem = (type, quality) => ({
  type: 'ADD_ITEM',
  id: nextId++,
  type,
  quality,
  daysRemaining: 20,
});

export const tick = () => ({ type: 'TICK' });
