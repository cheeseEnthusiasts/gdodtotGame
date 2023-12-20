using Godot;
using System;
using System.Data.Common;



public partial class wizzardMovement : CharacterBody2D
{
	public float Speed = 100.0f;
	public bool isFacingRight = true;
	public bool moving = false;
	public Node2D characterNode;
	Camera2D cameraNode;
	public override void _PhysicsProcess(double delta)
	{
		Vector2 velocity = Velocity;
		
		Vector2 direction = Input.GetVector("left", "right", "up", "down");
		if (direction != Vector2.Zero)
		{
			velocity.X = direction.X * Speed;
			velocity.Y = direction.Y * Speed;
			moving = true;
		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
			velocity.Y = Mathf.MoveToward(Velocity.Y, 0, Speed);
			moving = false;
		}

		if (moving && Input.IsKeyPressed(Key.Shift))
		{
			Speed = 200.0f;
		}
		else
		{
			Speed = 100.0f;
		}
		if (direction.X < 0 && isFacingRight)
		{
			ApplyScale(new Vector2(-1,1));
			isFacingRight = false;
		}

		if(direction.X > 0 && !isFacingRight)
		{
			ApplyScale(new Vector2(-1,1));
			isFacingRight = true;
		}

		Velocity = velocity;
		MoveAndSlide();
		
	}
	public void wizzarding()
	{
		
	}
	
}



