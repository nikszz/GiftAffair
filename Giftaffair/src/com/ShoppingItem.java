package com;

import java.io.Serializable;

public class ShoppingItem implements Serializable
{
  
  private static final long serialVersionUID = 1345723502508775394L;
  public int productId;
  public String name;
  public String description;
  public double price;
  public int quantity;
}
