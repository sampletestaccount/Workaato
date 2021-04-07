{
  title: "Xano",
  # Code for connection key is hidden but identical to the code snippet above.
  connection: {
    # Some code here
  },

  test: {
    # Some code here
  },
 
  actions: {
    get_categories: {
      input_fields: lambda do
        [
          {
            name: 'categories_id',
            type: 'integer',
            optional: false
          }
        ]
      end, 
      
      execute: lambda do |connection, input|
      get("https://x8ki-letl-twmt.n7.xano.io/api:8tLdRrJC/posts/#{input["categories_id"]}")
      end,
      
      output_fields: lambda do
        [
          {
            name: "id",
            type: "integer"
          },
          {
            name: "created at",
            type: "integer"
          },
          {
            name: "user_id",
            type: "integer"
          },
          {
            name: "category_id",
            type: "integer"
          },
          {
            name: "name",
            type: "string"
          },
          {
            name: "body",
            type: "string"
          }
        ]
      end
     },
    
  update_category_id: {
      input_fields: lambda do
        [
          {
          name: "id",
          type: "integer"
 
          }
        ]
      end,
    execute: lambda do |connection, input|
        payload = { 
          "name": "let me try new value",
          "body": "NewNew",
          "category_id": 2,
          "user_id": 1
          
                  }
    post("https://x8ki-letl-twmt.n7.xano.io/api:8tLdRrJC/posts/#{input["id"]}",payload)
    end,
    
    output_fields: lambda do
       [
         {
            name: "id",
            type: "integer"
          },
          {
            name: "created at",
            type: "integer"
          },
          {
            name: "user_id",
            type: "integer"
          },
          {
            name: "category_id",
            type: "integer"
          },
          {
            name: "name",
            type: "string"
          },
          {
            name: "body",
            type: "string"
          }
       ]
   end
  },
   insert_post: {
      input_fields: lambda do
        [
          {
            name: "id",
            type: "integer"
          },
          {
            name: "created at",
            type: "integer"
          },
          {
            name: "user_id",
            type: "integer"
          },
          {
            name: "category_id",
            type: "integer"
          },
          {
            name: "name",
            type: "string"
          },
          {
            name: "body",
            type: "string"
          }
         ]
      end,
      
      execute: lambda do |connection, input|
      puts input
      post("https://x8ki-letl-twmt.n7.xano.io/api:8tLdRrJC/posts", input)
      end,
      
      output_fields: lambda do
       [
         {
            name: "id",
            type: "integer"
          },
          {
            name: "created at",
            type: "integer"
          },
          {
            name: "user_id",
            type: "integer"
          },
          {
            name: "category_id",
            type: "integer"
          },
          {
            name: "name",
            type: "string"
          },
          {
            name: "body",
            type: "string"
          }
       ]
   end 
  }, 
  },
  }