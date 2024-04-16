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
    cy.get('#app-text')
      .contains('Hello Rhino!');
  });
});
