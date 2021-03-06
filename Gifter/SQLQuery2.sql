     SELECT p.Title, p.Caption, p.DateCreated, p.ImageUrl, p.UserProfileId,

                            
                            up.[Name], up.Bio, up.Email, up.DateCreated AS UserProfileDateCreated,
                            up.ImageUrl AS UserProfileImageUrl,
                            
                           c.Id AS CommentId, c.Message, c.UserProfileId AS CommentUserProfileId
                           FROM Post p
                   
                           LEFT JOIN Comment c on c.PostId = p.id
                            LEFT JOIN UserProfile up ON p.UserProfileId = up.id
                           WHERE p.Id = 1