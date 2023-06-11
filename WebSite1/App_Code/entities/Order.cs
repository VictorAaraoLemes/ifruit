﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Order
/// </summary>
public class Order
{
    // public int Id { get; set; }
    public DateTime date { get; set; }
    public string status { get; set; }
    public int cart_id { get; set; }

    public Order(DateTime date, string status, int cart_id)
    {
        this.date = date;
        this.status = status;
        this.cart_id = cart_id;
    }
}