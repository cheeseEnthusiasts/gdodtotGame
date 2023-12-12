using Godot;
using System;

public partial class wizzardMovement : CharacterBody2D
{
	public const float Speed = 300.0f;


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
		if (velocity.X < 0) 
		{
			
			
			
		}
		
		Velocity = velocity;
		MoveAndSlide();
	}
}
