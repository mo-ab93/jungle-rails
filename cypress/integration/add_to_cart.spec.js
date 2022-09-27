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

  it("The cart should update with a new number when add to cart is pressed", () => {
    cy.get('.btn').first().click({force: true})
    cy.contains('My Cart').should('contain', '1')
  });
})