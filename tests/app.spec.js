const assert = require('assert');

const toTest = require('../app/app.js');

describe('testing the test', () => {
  describe('func', () => {
    it('should return a json with data to test...test', () => {
      const funcData = toTest.func();
      assert.equal(funcData.text, 'some_text');
    });
  });
});
