describe('app', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('displays a title', () => {
    cy.contains("Rhino App")
  })
})
