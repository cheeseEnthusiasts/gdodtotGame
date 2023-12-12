using Godot;
using System;

public partial class wizzardMovement : CharacterBody2D
{
	public const float Speed = 300.0f;
	public bool isFacingRight;
	public Node2D characterNode;
	public override void _PhysicsProcess(double delta)
	{
		Vector2 velocity = Velocity;
		
		Vector2 direction = Input.GetVector("left", "right", "up", "down");
		if (direction != Vector2.Zero)
		{
			velocity.X = direction.X * Speed;
			velocity.Y = direction.Y * Speed;
			
		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
			velocity.Y = Mathf.MoveToward(Velocity.Y, 0, Speed);
		}
		
	
		MoveAndSlide();
		if (characterNode.Scale.X > 0) 
		{
			isFacingRight = true;
		}


		if(isFacingRight && Input.IsKeyPressed(Key.E))
		{
			ApplyScale(new Vector2(-1,1));
		}
	}
}