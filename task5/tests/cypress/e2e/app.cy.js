describe('app', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('displays a title', () => {
    cy.contains('Rhino App');
  });

  it('greets user with their name', () => {
    cy.get('#app-name')
      .type('Rhino');
    cy.get('#app-greeting')
      .contains('Hello Rhino!');
  });

  it('congratulates for checking all', () => {
    cy.get('#app-choices input')
      .check();
    cy.get('#app-done')
      .contains('Well done!');
  });
});
