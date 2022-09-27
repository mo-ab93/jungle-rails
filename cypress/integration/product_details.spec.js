describe('Jungle feature spec', () => {
  beforeEach(() => {
    cy.request('/cypress_rails_reset_state')
    cy.visit("/")
    
  })
  
  it("goes to home page", () => {
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("There is a partials page for a product", () => {
    cy.get('[alt="Scented Blade"]').click()
  });


})