import { daysElapsed } from './reducers';

test('it ticks', () => {
  expect(daysElapsed(0, { type: 'TICK' })).toBe(1);
});
