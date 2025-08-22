<script setup>
  import Header from '@/components/Header.vue';
  import ProjectList from '@/components/ProjectList.vue';
</script>

<template>
  <div class="min-h-screen bg-gray-200 text-gray-900 font-mono px-6 py-8">
    <Header />
    <ProjectList />
  </div>
</template>

<style>
  body {
    font-family: 'Inter', sans-serif;
  }
  .mono {
    font-family: 'Fira Code', monospace;
  }
</style>
