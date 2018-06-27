<?php

namespace App\Repositories\Contracts;

interface UserInterface
{
  /**
   * Get all posts only published
   * @return mixed
   */
  public function getAllPublished();

  /**
   * Get post only published
   * @return mixed
   */
  public function findOnlyPublished();
}
