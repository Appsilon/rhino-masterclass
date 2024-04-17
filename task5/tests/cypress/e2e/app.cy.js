describe('app', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('displays a title', () => {
    // Step 2:
    cy.contains('Rhino App');
  });

  it('greets user with their name', () => {
    // Step 3:
    cy.get('#app-name')
      .type('Rhino');
    // cy.get('#app-greeting')
    //   .contains('Hello Rhino!');
  });

  it('congratulates for checking all', () => {
    // Step 4:
    cy.get('#app-choices input')
      .check();
    // cy.get('#app-done')
    //   .contains('Well done!');
  });
});
